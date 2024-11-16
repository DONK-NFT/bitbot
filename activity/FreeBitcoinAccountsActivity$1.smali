.class Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$1;
.super Ljava/lang/Object;
.source "FreeBitcoinAccountsActivity.java"

# interfaces
.implements Lcom/yodo1/mas/Yodo1Mas$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 124
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$1;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMasInitFailed(Lcom/yodo1/mas/error/Yodo1MasError;)V
    .locals 1

    .line 132
    invoke-static {}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Yodo1Mas:: onMasInitFailed"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMasInitSuccessful()V
    .locals 2

    .line 127
    invoke-static {}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Yodo1Mas:: onMasInitSuccessful"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
