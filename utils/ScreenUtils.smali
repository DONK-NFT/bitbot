.class public Lcom/chlegou/bitbot/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# instance fields
.field private displayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/chlegou/bitbot/utils/ScreenUtils;->displayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static is10InchTabletDevice(I)Z
    .locals 1

    const/16 v0, 0x2d0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is7InchTabletDevice(I)Z
    .locals 1

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2d0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTabletDevice(I)Z
    .locals 1

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dpToPx(F)I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/ScreenUtils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getHeight()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/ScreenUtils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getHeightDp()I
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/chlegou/bitbot/utils/ScreenUtils;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/utils/ScreenUtils;->pxToDp(F)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/ScreenUtils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getWidthDp()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/chlegou/bitbot/utils/ScreenUtils;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/utils/ScreenUtils;->pxToDp(F)I

    move-result v0

    return v0
.end method

.method public is10InchTabletDevice()Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/chlegou/bitbot/utils/ScreenUtils;->getWidthDp()I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is7InchTabletDevice()Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/chlegou/bitbot/utils/ScreenUtils;->getWidthDp()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/chlegou/bitbot/utils/ScreenUtils;->getWidthDp()I

    move-result v0

    const/16 v1, 0x2d0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTabletDevice()Z
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/chlegou/bitbot/utils/ScreenUtils;->getWidthDp()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pxToDp(F)I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/ScreenUtils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
