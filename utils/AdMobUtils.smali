.class public Lcom/chlegou/bitbot/utils/AdMobUtils;
.super Ljava/lang/Object;
.source "AdMobUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chlegou/bitbot/utils/AdMobUtils$Ids;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdMobUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAdaptiveBannerAdInContainer(Landroid/app/Activity;Landroidx/appcompat/widget/LinearLayoutCompat;Ljava/lang/String;)Lcom/google/android/gms/ads/AdView;
    .locals 1

    .line 35
    sget-object p2, Lcom/chlegou/bitbot/utils/AdMobUtils;->TAG:Ljava/lang/String;

    const-string v0, "creating adaptive ad"

    invoke-static {p2, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lcom/chlegou/bitbot/utils/AdMobUtils;->getAdaptiveAdSize(Landroid/app/Activity;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    .line 38
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static buildAdRequestObject()Lcom/google/android/gms/ads/AdRequest;
    .locals 1

    .line 72
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getAdaptiveAdSize(Landroid/app/Activity;)Lcom/google/android/gms/ads/AdSize;
    .locals 2

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 65
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 68
    invoke-static {p0, v0}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    return-object p0
.end method

.method public static initTestDevices()V
    .locals 0

    return-void
.end method
