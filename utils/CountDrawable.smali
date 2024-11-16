.class public Lcom/chlegou/bitbot/utils/CountDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CountDrawable.java"


# instance fields
.field private mBadgePaint:Landroid/graphics/Paint;

.field private mCount:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTxtRect:Landroid/graphics/Rect;

.field private mWillDraw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTxtRect:Landroid/graphics/Rect;

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mCount:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mBadgePaint:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f060369

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mBadgePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mBadgePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 40
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 50
    iget-boolean v0, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mWillDraw:Z

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/chlegou/bitbot/utils/CountDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 54
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 55
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    .line 61
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v1, v3

    sub-float v3, v0, v3

    .line 64
    iget-object v4, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mCount:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    float-to-double v6, v0

    const-wide/high16 v8, 0x4016000000000000L    # 5.5

    .line 66
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-int v0, v6

    int-to-float v0, v0

    iget-object v4, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    float-to-double v6, v0

    const-wide/high16 v8, 0x401a000000000000L    # 6.5

    .line 69
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-int v0, v6

    int-to-float v0, v0

    iget-object v4, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mCount:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTxtRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 73
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTxtRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTxtRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    .line 75
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mCount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 76
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTextPaint:Landroid/graphics/Paint;

    const-string v2, "99+"

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mCount:Ljava/lang/String;

    iget-object v2, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mCount:Ljava/lang/String;

    const-string v0, "0"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/chlegou/bitbot/utils/CountDrawable;->mWillDraw:Z

    .line 89
    invoke-virtual {p0}, Lcom/chlegou/bitbot/utils/CountDrawable;->invalidateSelf()V

    return-void
.end method
