.class Lcom/chlegou/bitbot/utils/PermissionUtils$1;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/PermissionUtils;->requestOverlayPermissionIfNotGranted(Landroidx/appcompat/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Intent;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/PermissionUtils$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/chlegou/bitbot/utils/PermissionUtils$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 51
    :try_start_0
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/PermissionUtils$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object p2, p0, Lcom/chlegou/bitbot/utils/PermissionUtils$1;->val$intent:Landroid/content/Intent;

    const/16 v0, 0x7d6

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
