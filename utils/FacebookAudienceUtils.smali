.class public Lcom/chlegou/bitbot/utils/FacebookAudienceUtils;
.super Ljava/lang/Object;
.source "FacebookAudienceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chlegou/bitbot/utils/FacebookAudienceUtils$Ids;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookAudienceUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBannerAdInContainer(Landroid/app/Activity;Landroidx/appcompat/widget/LinearLayoutCompat;Ljava/lang/String;)Lcom/facebook/ads/AdView;
    .locals 4

    .line 30
    sget-object v0, Lcom/chlegou/bitbot/utils/FacebookAudienceUtils;->TAG:Ljava/lang/String;

    const-string v1, "creating ad"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/chlegou/bitbot/utils/ScreenUtils;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {v0}, Lcom/chlegou/bitbot/utils/FacebookAudienceUtils;->getAdaptiveBannerAdSize(Lcom/chlegou/bitbot/utils/ScreenUtils;)Lcom/facebook/ads/AdSize;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/chlegou/bitbot/utils/ScreenUtils;->dpToPx(F)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    new-instance v0, Lcom/facebook/ads/AdView;

    invoke-direct {v0, p0, p2, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    .line 39
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->addView(Landroid/view/View;)V

    .line 41
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    return-object v0
.end method

.method private static getAdaptiveBannerAdSize(Lcom/chlegou/bitbot/utils/ScreenUtils;)Lcom/facebook/ads/AdSize;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/chlegou/bitbot/utils/ScreenUtils;->isTabletDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    :goto_0
    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-static {p0}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "LDU"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 58
    invoke-static {p0, v1, v1}, Lcom/facebook/ads/AdSettings;->setDataProcessingOptions([Ljava/lang/String;II)V

    return-void
.end method
