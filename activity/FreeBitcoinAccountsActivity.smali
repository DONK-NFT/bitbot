.class public Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FreeBitcoinAccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FreeBitcoinAccountsActivity"


# instance fields
.field adContainer:Landroidx/appcompat/widget/LinearLayoutCompat;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0053
    .end annotation
.end field

.field bannerAdView:Lcom/facebook/ads/AdView;

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field btnBitbotWebapp:Lcom/google/android/material/button/MaterialButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0091
    .end annotation
.end field

.field btnKeepAwake:Lcom/google/android/material/button/MaterialButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a009c
    .end annotation
.end field

.field btnWhitelistSettings:Lcom/google/android/material/button/MaterialButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00a5
    .end annotation
.end field

.field emptyView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a010e
    .end annotation
.end field

.field flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;"
        }
    .end annotation
.end field

.field freeBitcoinAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chlegou/bitbot/models/FreeBitcoinAccount;",
            ">;"
        }
    .end annotation
.end field

.field gson:Lcom/google/gson/Gson;

.field keepAwakeDescription:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a0
    .end annotation
.end field

.field keepAwakeStatus:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a1
    .end annotation
.end field

.field keepAwakeView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01a2
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0252
    .end annotation
.end field

.field swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02bd
    .end annotation
.end field

.field whitelistContainer:Landroidx/appcompat/widget/LinearLayoutCompat;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0322
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->freeBitcoinAccounts:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->gson:Lcom/google/gson/Gson;

    .line 96
    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 97
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->getFreeBitcoinAccounts()V

    return-void
.end method

.method static synthetic access$200(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;Ljava/util/List;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->startAutoBonusWorkersForAccounts(Ljava/util/List;)V

    return-void
.end method

.method private createBroadcaster()V
    .locals 1

    .line 263
    new-instance v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$2;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$2;-><init>(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;)V

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getFreeBitcoinAccounts()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 291
    invoke-static {}, Lcom/chlegou/bitbot/network/RetrofitClient;->getBitBotAPIInstance()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/chlegou/bitbot/network/BitBotCloudClient;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chlegou/bitbot/network/BitBotCloudClient;

    .line 292
    invoke-interface {v0}, Lcom/chlegou/bitbot/network/BitBotCloudClient;->getAutoAccounts()Lretrofit2/Call;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;

    invoke-direct {v1, p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;-><init>(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private handleKeepAwakeUI()V
    .locals 5

    .line 252
    invoke-static {p0}, Lcom/chlegou/bitbot/utils/PermissionUtils;->isDozeModeWhiteListed(Landroid/app/Activity;)Z

    move-result v0

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDozeModeWhiteListed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->keepAwakeStatus:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    const-string v2, "ENABLED"

    goto :goto_0

    :cond_0
    const-string v2, "DISABLED"

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->keepAwakeStatus:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    const v2, 0x7f0600f2

    goto :goto_1

    :cond_1
    const v2, 0x7f060371

    :goto_1
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 257
    iget-object v1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->btnKeepAwake:Lcom/google/android/material/button/MaterialButton;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->keepAwakeDescription:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->whitelistContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-static {}, Lcom/chlegou/bitbot/utils/PermissionUtils;->isBatteryOptimizationsConcerned()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    return-void
.end method

.method private initToolbar()V
    .locals 2

    const v0, 0x7f0a02fd

    .line 140
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 141
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 142
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private startAutoBonusWorkersForAccounts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chlegou/bitbot/models/FreeBitcoinAccount;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;

    .line 323
    invoke-virtual {v0}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->getAutoBonusConfig()Lcom/chlegou/bitbot/models/FreeBitcoinAutoBonusConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinAutoBonusConfig;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    sget-object v1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAutoBonusWorkersForAccounts:: accountId:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v1, Landroidx/work/Data$Builder;

    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    .line 326
    invoke-virtual {v0}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->getAccountId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FREEBITCOIN_ACCOUNT_ID"

    invoke-virtual {v1, v2, v0}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v0

    const-string v1, "FREEBITCOIN_ACTION_TYPE"

    const-string v2, "SAP"

    .line 327
    invoke-virtual {v0, v1, v2}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->schedulePeriodicWorker(Landroidx/work/Data;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 239
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 240
    sget-object p3, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    const-string v0, "onActivityResult"

    invoke-static {p3, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x7d7

    if-ne p1, p2, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->handleKeepAwakeUI()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0091

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a009c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a00a5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    sget-object p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    const-string v0, "redirect to WhiteList settings"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "https://bitbotplus.page.link/bwlist"

    .line 230
    invoke-static {p0, p1}, Lcom/chlegou/bitbot/utils/CustomTabs;->openTabIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    sget-object p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    const-string v0, "request Doze Mode WhiteList"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {p0}, Lcom/chlegou/bitbot/utils/PermissionUtils;->requestDozeModeWhiteList(Landroid/app/Activity;)V

    goto :goto_0

    .line 219
    :cond_2
    sget-object p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    const-string v0, "Redirect To BitBot Web App"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "https://my.bitbot.plus"

    .line 220
    invoke-static {p0, p1}, Lcom/chlegou/bitbot/utils/Tools;->openURLInPreferredNavigator(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 102
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->setContentView(I)V

    .line 103
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 104
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->initToolbar()V

    .line 106
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->btnBitbotWebapp:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->btnKeepAwake:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->btnWhitelistSettings:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget-object p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDozeModeWhiteListed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/chlegou/bitbot/utils/PermissionUtils;->isDozeModeWhiteListed(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->emptyView:Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/helpers/EmptyViewHelper;->create(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/view/View;)Leu/davidea/flexibleadapter/helpers/EmptyViewHelper;

    .line 115
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->createBroadcaster()V

    .line 117
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->getFreeBitcoinAccounts()V

    .line 119
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->handleKeepAwakeUI()V

    .line 122
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    const p1, 0x7f0a0053

    .line 123
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p0}, Lcom/chlegou/bitbot/utils/AdMobUtils;->getAdaptiveAdSize(Landroid/app/Activity;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 124
    invoke-static {}, Lcom/yodo1/mas/Yodo1Mas;->getInstance()Lcom/yodo1/mas/Yodo1Mas;

    move-result-object p1

    new-instance v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$1;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$1;-><init>(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;)V

    const-string v1, "RPGGq6ItY7"

    invoke-virtual {p1, p0, v1, v0}, Lcom/yodo1/mas/Yodo1Mas;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/yodo1/mas/Yodo1Mas$InitListener;)V

    const p1, 0x7f0a0334

    .line 135
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yodo1/mas/banner/Yodo1MasBannerAdView;

    invoke-virtual {p1}, Lcom/yodo1/mas/banner/Yodo1MasBannerAdView;->loadAd()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 151
    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 152
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0e0004

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->bannerAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->bannerAdView:Lcom/facebook/ads/AdView;

    .line 211
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 212
    sget-object v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 175
    :sswitch_0
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->getFreeBitcoinAccounts()V

    goto :goto_0

    .line 167
    :sswitch_1
    const-class v0, Lcom/chlegou/bitbot/activity/LogsActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;ZLandroid/os/Bundle;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "https://pages.bitbot.plus"

    .line 171
    invoke-static {p0, v0}, Lcom/chlegou/bitbot/utils/CustomTabs;->openTabIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :sswitch_3
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->finish()V

    .line 180
    :goto_0
    sget-object v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    const-string v1, "MenuItem::::selected "

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f0a0040 -> :sswitch_2
        0x7f0a0043 -> :sswitch_1
        0x7f0a004b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .line 196
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 199
    sget-object v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 186
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 188
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_INTENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 190
    sget-object v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
