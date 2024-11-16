.class Lcom/chlegou/bitbot/activity/LinksActivity$1;
.super Ljava/lang/Object;
.source "LinksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/activity/LinksActivity;->testGettingAutoAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chlegou/bitbot/activity/LinksActivity;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/activity/LinksActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/LinksActivity$1;->this$0:Lcom/chlegou/bitbot/activity/LinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 74
    invoke-static {}, Lcom/chlegou/bitbot/activity/LinksActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Testing Auto Account"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "16557339"

    .line 76
    invoke-static {v0}, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->getAutoAccount(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinAccount;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/chlegou/bitbot/activity/LinksActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeBitcoinAccount :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 79
    invoke-static {}, Lcom/chlegou/bitbot/activity/LinksActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeBitcoinAccount isNullOrEmpty:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
