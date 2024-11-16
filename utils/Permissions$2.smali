.class Lcom/chlegou/bitbot/utils/Permissions$2;
.super Ljava/lang/Object;
.source "Permissions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/Permissions;->startPowerSaverIntent(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/Permissions$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/chlegou/bitbot/utils/Permissions$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/Permissions$2;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/chlegou/bitbot/utils/Permissions$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
