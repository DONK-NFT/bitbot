.class public Lcom/chlegou/bitbot/utils/BroadcastUtils;
.super Ljava/lang/Object;
.source "BroadcastUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;
    }
.end annotation


# static fields
.field public static final BROADCAST_INTENT:Ljava/lang/String; = "BROADCAST_INTENT"

.field public static final BROADCAST_KEY:Ljava/lang/String; = "BROADCAST_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcast(Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;Landroid/os/Bundle;)V
    .locals 2

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "BROADCAST_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "BROADCAST_KEY"

    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 24
    :cond_0
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
