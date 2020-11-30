{extends 'file:templates/layout.tpl'}

{block 'main'}
<section class="search">
    <div class="container grid">
        <h2 class="search__title">Результаты поиска</h2>

        <div class="search__result-box grid">

            [[!AdvSearch? &parents=`9, 12, 13, 14` &includeTVs=`articleTopic, pBg, servicePrice, serviceImg` &withTVs=`articleTopic, pBg, servicePrice, serviceImg`]]

        </div> 
    </div>
</section>
{/block}