.class public final Lk2/c;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static a:Lk2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk2/b;

    invoke-direct {v0}, Lk2/b;-><init>()V

    sput-object v0, Lk2/c;->a:Lk2/b;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lk2/c;->a:Lk2/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lk2/c;->a:Lk2/b;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Lk2/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lk2/c;->a:Lk2/b;

    invoke-virtual {v0, p0, p1}, Lk2/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
