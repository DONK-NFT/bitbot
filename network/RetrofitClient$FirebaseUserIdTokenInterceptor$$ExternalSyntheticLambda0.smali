.class public final synthetic Lcom/chlegou/bitbot/network/RetrofitClient$FirebaseUserIdTokenInterceptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/network/RetrofitClient$FirebaseUserIdTokenInterceptor$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/chlegou/bitbot/network/RetrofitClient$FirebaseUserIdTokenInterceptor$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/chlegou/bitbot/network/RetrofitClient$FirebaseUserIdTokenInterceptor;->lambda$intercept$1(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Exception;)V

    return-void
.end method
