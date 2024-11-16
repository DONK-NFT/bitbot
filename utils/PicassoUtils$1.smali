.class Lcom/chlegou/bitbot/utils/PicassoUtils$1;
.super Ljava/lang/Object;
.source "PicassoUtils.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/PicassoUtils;->buildTargetForAppCompatButton(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatButton;)Lcom/squareup/picasso/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$target:Landroidx/appcompat/widget/AppCompatButton;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatButton;Landroid/content/Context;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$1;->val$target:Landroidx/appcompat/widget/AppCompatButton;

    iput-object p2, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$1;->val$target:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2

    .line 24
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$1;->val$target:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$1;->val$target:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
