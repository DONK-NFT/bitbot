.class Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "PicassoUtils.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapDrawablePlaceHolder"
.end annotation


# instance fields
.field protected drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;


# direct methods
.method private constructor <init>(Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;->this$0:Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;Lcom/chlegou/bitbot/utils/PicassoUtils$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;-><init>(Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 89
    invoke-virtual {p0, p2}, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1

    .line 84
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 72
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;->drawable:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 74
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;->setBounds(IIII)V

    .line 77
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;->this$0:Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;

    invoke-static {p1}, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;->access$100(Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;->this$0:Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;

    invoke-static {p1}, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;->access$100(Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;->this$0:Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;

    invoke-static {v0}, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;->access$100(Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
