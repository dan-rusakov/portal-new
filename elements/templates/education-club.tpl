{extends 'file:templates/layout.tpl'}

{block 'main'}
{'page-banner' | chunk : ['pSubtitle' => 'Библиотека', 'pTitle' => $_modx->resource.pTitle, 'pBg' => $_modx->resource.pBg]}
<section class="education-club">
    <div class="container grid">
        <a href="{$_modx->makeUrl(14)}" class="education-club__category-card grid" style="background-image: url(assets/img/education-club-img1.jpg);">
            <i class="icon-clapperboard education-club__icon"></i>
            <p class="education-club__title">Фильмы</p>
        </a>
        <a href="{$_modx->makeUrl(12)}" class="education-club__category-card grid" style="background-image: url(assets/img/education-club-img2.jpg);">
            <i class="icon-book education-club__icon"></i>
            <p class="education-club__title">Книги</p>
        </a>
        <a href="{$_modx->makeUrl(13)}" class="education-club__category-card grid" style="background-image: url(assets/img/education-club-img3.jpg);">
            <i class="icon-document education-club__icon"></i>
            <p class="education-club__title">Документы</p>
        </a>
        <a href="{$_modx->makeUrl(9)}" class="education-club__category-card grid" style="background-image: url(assets/img/education-club-img4.jpg);">
            <i class="icon-man education-club__icon"></i>
            <p class="education-club__title">Статьи</p>
        </a>
    </div>
</section>
{/block}