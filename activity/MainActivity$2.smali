.class Lcom/chlegou/bitbot/activity/MainActivity$2;
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

    .line 500
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity$2;->this$0:Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 503
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity$2;->this$0:Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->sendContactSupportEmail()V

    return-void
.end method
