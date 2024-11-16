.class Lcom/chlegou/bitbot/activity/NewsActivity$1;
.super Ljava/lang/Object;
.source "NewsActivity.java"

# interfaces
.implements Lcom/yodo1/mas/Yodo1Mas$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/activity/NewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chlegou/bitbot/activity/NewsActivity;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/activity/NewsActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/NewsActivity$1;->this$0:Lcom/chlegou/bitbot/activity/NewsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMasInitFailed(Lcom/yodo1/mas/error/Yodo1MasError;)V
    .locals 1

    .line 89
    invoke-static {}, Lcom/chlegou/bitbot/activity/NewsActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Yodo1Mas:: onMasInitFailed"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMasInitSuccessful()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/chlegou/bitbot/activity/NewsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Yodo1Mas:: onMasInitSuccessful"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
