.class public Lcom/chlegou/bitbot/utils/PicassoUtils;
.super Ljava/lang/Object;
.source "PicassoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTargetForAppCompatButton(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatButton;)Lcom/squareup/picasso/Target;
    .locals 1

    .line 21
    new-instance v0, Lcom/chlegou/bitbot/utils/PicassoUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/chlegou/bitbot/utils/PicassoUtils$1;-><init>(Landroidx/appcompat/widget/AppCompatButton;Landroid/content/Context;)V

    return-object v0
.end method
