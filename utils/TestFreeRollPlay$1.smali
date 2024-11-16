.class Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;
.super Ljava/lang/Object;
.source "TestFreeRollPlay.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$freeBitcoinSynchronizerService:Lcom/chlegou/bitbot/network/HttpClient;

.field final synthetic val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

.field final synthetic val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;Ljava/util/concurrent/CountDownLatch;Lcom/chlegou/bitbot/network/HttpClient;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    iput-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeBitcoinSynchronizerService:Lcom/chlegou/bitbot/network/HttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 306
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Something went wrong when Calling API."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 309
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FETCHING_FREEBITCOIN_WEBSITE:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 310
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FETCHING_FREEBITCOIN_WEBSITE:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 312
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSuccessful: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 111
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREEBITCOIN_WEBSITE_EMPTY_BODY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 112
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREEBITCOIN_WEBSITE_EMPTY_BODY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 114
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 118
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, ".*token_name\\s*=\\s*[\"\']([^\"|^\']*)[\"\'].*"

    .line 125
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 126
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tokenNameMatcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 130
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 132
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TOKEN_NAME:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 133
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TOKEN_NAME:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 135
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    const-string v0, ".*tcGiQefA\\s*=\\s*[\"\']([^\"|^\']*)[\"\'].*"

    .line 138
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 140
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tcGiQefAMatcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 143
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 145
    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TCGIQEFA:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 146
    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TCGIQEFA:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 148
    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 152
    :cond_2
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 153
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v6, "token = %s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string/jumbo v6, "tcGiQefA = %s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, ".*\\$\\([\"\']#%TOKEN%[\"\']\\)\\.val\\([\"\']([^\"|^\']*)[\"\']\\).*"

    const-string v4, "%TOKEN%"

    .line 158
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 159
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 160
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tokenValueMatcher: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(I)V

    .line 163
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_3

    .line 164
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v3, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 165
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v3, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TOKEN_VALUE:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 166
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v3, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TOKEN_VALUE:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 168
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 173
    :cond_3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 174
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 175
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const-string/jumbo v3, "tokenValue = %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeBitcoinSynchronizerService:Lcom/chlegou/bitbot/network/HttpClient;

    invoke-static {}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->buildHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->buildFreePlayCheckQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "https://freebitco.in/cgi-bin/fp_check.pl"

    invoke-interface {p2, v4, v1, v3}, Lcom/chlegou/bitbot/network/HttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    .line 180
    new-instance v1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;-><init>(Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_4
    return-void
.end method
