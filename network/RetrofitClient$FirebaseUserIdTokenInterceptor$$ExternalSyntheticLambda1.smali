.class public final synthetic Lcom/chlegou/bitbot/network/RetrofitClient$FirebaseUserIdTokenInterceptor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/network/RetrofitClient$FirebaseUserIdTokenInterceptor$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/chlegou/bitbot/network/RetrofitClient$FirebaseUserIdTokenInterceptor$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/chlegou/bitbot/network/RetrofitClient$FirebaseUserIdTokenInterceptor$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcom/chlegou/bitbot/network/RetrofitClient$FirebaseUserIdTokenInterceptor$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    invoke-static {v0, v1, p1}, Lcom/chlegou/bitbot/network/RetrofitClient$FirebaseUserIdTokenInterceptor;->lambda$intercept$0([Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/google/firebase/auth/GetTokenResult;)V

    return-void
.end method
