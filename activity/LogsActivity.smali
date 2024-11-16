.class public Lcom/chlegou/bitbot/activity/LogsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "LogsActivity"


# instance fields
.field adContainer:Landroidx/appcompat/widget/LinearLayoutCompat;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0053
    .end annotation
.end field

.field bannerAdView:Lcom/facebook/ads/AdView;

.field emptyView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a010e
    .end annotation
.end field

.field flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field gson:Lcom/google/gson/Gson;

.field public logEventsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chlegou/bitbot/models/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field recyclerViewLogsList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->gson:Lcom/google/gson/Gson;

    .line 46
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->logEventsList:Ljava/util/List;

    .line 49
    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    return-void
.end method

.method private initRecyclerViewLogEventsList()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->recyclerViewLogsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->recyclerViewLogsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 135
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->emptyView:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Leu/davidea/flexibleadapter/helpers/EmptyViewHelper;->create(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/view/View;)Leu/davidea/flexibleadapter/helpers/EmptyViewHelper;

    .line 141
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->logEventsList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/Tools;->updateFlexibleAdapterWithList(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;)V

    .line 142
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    new-instance v1, Lcom/chlegou/bitbot/flexibleitem/FlexibleBasicScrollableHeader;

    const v2, 0x7f1200ab

    invoke-virtual {p0, v2}, Lcom/chlegou/bitbot/activity/LogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chlegou/bitbot/flexibleitem/FlexibleBasicScrollableHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addScrollableHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    return-void
.end method

.method private initToolbar()V
    .locals 2

    const v0, 0x7f0a02fd

    .line 52
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/LogsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/LogsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 53
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/LogsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Log Events"

    .line 55
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 63
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/LogsActivity;->setContentView(I)V

    .line 64
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 65
    sget-object p1, Lcom/chlegou/bitbot/activity/LogsActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/LogsActivity;->initToolbar()V

    .line 69
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->adContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v1, "212794290098709_387424539302349"

    invoke-static {p0, v0, v1}, Lcom/chlegou/bitbot/utils/FacebookAudienceUtils;->addBannerAdInContainer(Landroid/app/Activity;Landroidx/appcompat/widget/LinearLayoutCompat;Ljava/lang/String;)Lcom/facebook/ads/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->bannerAdView:Lcom/facebook/ads/AdView;

    const-string v0, "KEY_LOGGER_FREEBITCOIN_EVENT"

    .line 72
    invoke-static {v0}, Lcom/chlegou/bitbot/models/LogEvent;->readLogsFromPreferencesByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->logEventsList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logEventsList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->logEventsList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/LogsActivity;->initRecyclerViewLogEventsList()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->bannerAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity;->bannerAdView:Lcom/facebook/ads/AdView;

    .line 116
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 117
    sget-object v0, Lcom/chlegou/bitbot/activity/LogsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/LogsActivity;->onBackPressed()V

    .line 87
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 107
    sget-object v0, Lcom/chlegou/bitbot/activity/LogsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 100
    sget-object v0, Lcom/chlegou/bitbot/activity/LogsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 93
    sget-object v0, Lcom/chlegou/bitbot/activity/LogsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
