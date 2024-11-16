.class public final synthetic Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/chlegou/bitbot/activity/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/chlegou/bitbot/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/chlegou/bitbot/activity/MainActivity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {v0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->lambda$initBottomAppBar$2$com-chlegou-bitbot-activity-MainActivity(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
