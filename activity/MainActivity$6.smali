.class Lcom/chlegou/bitbot/activity/MainActivity$6;
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

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/activity/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity$6;->this$0:Lcom/chlegou/bitbot/activity/MainActivity;

    iput-object p2, p0, Lcom/chlegou/bitbot/activity/MainActivity$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 529
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
