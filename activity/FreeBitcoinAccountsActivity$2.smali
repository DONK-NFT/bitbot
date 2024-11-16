.class Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "FreeBitcoinAccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->createBroadcaster()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$2;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "BROADCAST_KEY"

    .line 266
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 267
    invoke-static {}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast with Key:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    sget-object p2, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$4;->$SwitchMap$com$chlegou$bitbot$utils$BroadcastUtils$Key:[I

    invoke-virtual {p1}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$2;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    invoke-static {p1}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->access$100(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$2;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p1, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f1200e3

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 274
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$2;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    invoke-static {p1}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->access$100(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;)V

    :goto_0
    return-void
.end method
