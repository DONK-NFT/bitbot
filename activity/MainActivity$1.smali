.class Lcom/chlegou/bitbot/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/activity/MainActivity;->showAboutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chlegou/bitbot/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/activity/MainActivity;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity$1;->this$0:Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 496
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity$1;->this$0:Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/chlegou/bitbot/utils/Constants;->CONTACT_EMAIL:Ljava/lang/String;

    sget-object v1, Lcom/chlegou/bitbot/utils/Constants;->COPY_EMAIL_TOAST:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/chlegou/bitbot/utils/Tools;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
