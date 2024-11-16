.class public final synthetic Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/chlegou/bitbot/activity/AuthActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/chlegou/bitbot/activity/AuthActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda7;->f$0:Lcom/chlegou/bitbot/activity/AuthActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda7;->f$0:Lcom/chlegou/bitbot/activity/AuthActivity;

    invoke-virtual {v0}, Lcom/chlegou/bitbot/activity/AuthActivity;->onBackPressed()V

    return-void
.end method
