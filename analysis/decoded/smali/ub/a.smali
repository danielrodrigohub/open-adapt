.class public final Lub/a;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lub/a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lub/a$a;

.field public static a:Led/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lub/a$a;

    invoke-direct {v0}, Lub/a$a;-><init>()V

    sput-object v0, Lub/a;->Companion:Lub/a$a;

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lub/a;->Companion:Lub/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "warn: "

    invoke-static {v1, p0}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lub/a$a;->a(Ljava/lang/String;)V

    return-void
.end method
