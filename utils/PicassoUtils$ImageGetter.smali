.class public Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;
.super Ljava/lang/Object;
.source "PicassoUtils.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chlegou/bitbot/utils/PicassoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageGetter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;
    }
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;->textView:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;->textView:Landroid/widget/TextView;

    .line 45
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;->textView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$100(Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;)Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;->textView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 50
    new-instance v0, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter$BitmapDrawablePlaceHolder;-><init>(Lcom/chlegou/bitbot/utils/PicassoUtils$ImageGetter;Lcom/chlegou/bitbot/utils/PicassoUtils$1;)V

    .line 51
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 52
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const v1, 0x7f08016c

    .line 53
    invoke-virtual {p1, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v1}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-object v0
.end method
