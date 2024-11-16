.class public final synthetic Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/chlegou/bitbot/models/FCMTokenRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/chlegou/bitbot/models/FCMTokenRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda1;->f$0:Lcom/chlegou/bitbot/models/FCMTokenRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda1;->f$0:Lcom/chlegou/bitbot/models/FCMTokenRequest;

    invoke-static {v0}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->lambda$sendFCMTokenToServer$1(Lcom/chlegou/bitbot/models/FCMTokenRequest;)V

    return-void
.end method
