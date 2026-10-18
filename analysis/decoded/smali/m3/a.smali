.class public final Lm3/a;
.super Ljava/lang/Object;
.source "FactoryPools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm3/a$c;,
        Lm3/a$d;,
        Lm3/a$e;,
        Lm3/a$b;
    }
.end annotation


# static fields
.field public static final a:Lm3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm3/a$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm3/a$a;

    invoke-direct {v0}, Lm3/a$a;-><init>()V

    sput-object v0, Lm3/a;->a:Lm3/a$a;

    return-void
.end method

.method public static a(ILm3/a$b;)Li0/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lm3/a$d;",
            ">(I",
            "Lm3/a$b<",
            "TT;>;)",
            "Li0/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li0/g;

    invoke-direct {v0, p0}, Li0/g;-><init>(I)V

    .line 2
    sget-object p0, Lm3/a;->a:Lm3/a$a;

    .line 3
    new-instance v1, Lm3/a$c;

    invoke-direct {v1, v0, p1, p0}, Lm3/a$c;-><init>(Li0/e;Lm3/a$b;Lm3/a$e;)V

    return-object v1
.end method
