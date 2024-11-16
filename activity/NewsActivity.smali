.class public Lcom/chlegou/bitbot/activity/NewsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NewsActivity"


# instance fields
.field gson:Lcom/google/gson/Gson;

.field public newsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chlegou/bitbot/models/News;",
            ">;"
        }
    .end annotation
.end field

.field recyclerViewNewsList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a021a
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/NewsActivity;->gson:Lcom/google/gson/Gson;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/NewsActivity;->newsList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/chlegou/bitbot/activity/NewsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleRecyclerViewNewsList()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/NewsActivity;->recyclerViewNewsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/NewsActivity;->createRecyclerViewNewsList()Leu/davidea/flexibleadapter/FlexibleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 130
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/NewsActivity;->recyclerViewNewsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method private initToolbar()V
    .locals 2

    const v0, 0x7f0a02fd

    .line 97
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 98
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/NewsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 99
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/NewsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createRecyclerViewNewsList()Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/chlegou/bitbot/activity/NewsActivity;->newsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chlegou/bitbot/models/News;

    .line 136
    new-instance v3, Lcom/chlegou/bitbot/flexibleitem/FlexibleNewsItem;

    invoke-direct {v3, v2}, Lcom/chlegou/bitbot/flexibleitem/FlexibleNewsItem;-><init>(Lcom/chlegou/bitbot/models/News;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0093

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/NewsActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 55
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 56
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    const v0, 0x7f0d0021

    .line 57
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/NewsActivity;->setContentView(I)V

    .line 58
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 59
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/NewsActivity;->initToolbar()V

    .line 61
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    const-string v1, "https://i0.wp.com/medooza.network/wp-content/uploads/2019/01/bitcoin-news-feed-2.jpg"

    .line 62
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f080150

    .line 64
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f0a0185

    .line 66
    invoke-virtual {p0, v1}, Lcom/chlegou/bitbot/activity/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    const v0, 0x7f0a0093

    .line 69
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/NewsActivity;->gson:Lcom/google/gson/Gson;

    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v1

    const-string v2, "NEWS_FEED"

    invoke-virtual {v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/List;

    new-array p1, p1, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    const-class v4, Lcom/chlegou/bitbot/models/News;

    aput-object v4, p1, v3

    invoke-static {v2, p1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/chlegou/bitbot/activity/NewsActivity;->newsList:Ljava/util/List;

    .line 73
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/NewsActivity;->handleRecyclerViewNewsList()V

    .line 75
    invoke-static {}, Lcom/chlegou/bitbot/utils/Tools;->updateLastNewsReadDate()V

    .line 79
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    const p1, 0x7f0a0053

    .line 80
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p0}, Lcom/chlegou/bitbot/utils/AdMobUtils;->getAdaptiveAdSize(Landroid/app/Activity;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    invoke-static {}, Lcom/yodo1/mas/Yodo1Mas;->getInstance()Lcom/yodo1/mas/Yodo1Mas;

    move-result-object p1

    new-instance v0, Lcom/chlegou/bitbot/activity/NewsActivity$1;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/NewsActivity$1;-><init>(Lcom/chlegou/bitbot/activity/NewsActivity;)V

    const-string v1, "RPGGq6ItY7"

    invoke-virtual {p1, p0, v1, v0}, Lcom/yodo1/mas/Yodo1Mas;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/yodo1/mas/Yodo1Mas$InitListener;)V

    const p1, 0x7f0a0334

    .line 92
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yodo1/mas/banner/Yodo1MasBannerAdView;

    invoke-virtual {p1}, Lcom/yodo1/mas/banner/Yodo1MasBannerAdView;->loadAd()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 109
    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 110
    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    :cond_0
    return v1
.end method

.method public onDestroy()V
    .locals 2

    .line 174
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 175
    sget-object v0, Lcom/chlegou/bitbot/activity/NewsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/NewsActivity;->finish()V

    .line 124
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 156
    sget-object v0, Lcom/chlegou/bitbot/activity/NewsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 165
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 166
    sget-object v0, Lcom/chlegou/bitbot/activity/NewsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
