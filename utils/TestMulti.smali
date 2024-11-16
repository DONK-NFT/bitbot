.class public Lcom/chlegou/bitbot/utils/TestMulti;
.super Ljava/lang/Object;
.source "TestMulti.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 3

    .line 9
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/g00fy2/versioncompare/Version;

    const-string v1, "1.3.5"

    invoke-direct {v0, v1}, Lcom/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    const-string v1, "1.3.6-rc1"

    invoke-virtual {v0, v1}, Lcom/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Z)V

    .line 10
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/g00fy2/versioncompare/Version;

    invoke-direct {v0, v1}, Lcom/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    const-string v2, "1.3.6-rc2"

    invoke-virtual {v0, v2}, Lcom/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Z)V

    .line 11
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/g00fy2/versioncompare/Version;

    invoke-direct {v0, v2}, Lcom/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Z)V

    .line 12
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/g00fy2/versioncompare/Version;

    invoke-direct {v0, v2}, Lcom/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Z)V

    .line 13
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/g00fy2/versioncompare/Version;

    const-string v2, "1.3.6"

    invoke-direct {v0, v2}, Lcom/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Z)V

    return-void
.end method
