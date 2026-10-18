.class public abstract Lu6/p;
.super Ljava/lang/Object;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/p$b;
    }
.end annotation


# static fields
.field public static final a:Lu6/p$a;

.field public static final b:Lu6/p$b;

.field public static final c:Lu6/p$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu6/p$a;

    invoke-direct {v0}, Lu6/p$a;-><init>()V

    sput-object v0, Lu6/p;->a:Lu6/p$a;

    .line 2
    new-instance v0, Lu6/p$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lu6/p$b;-><init>(I)V

    sput-object v0, Lu6/p;->b:Lu6/p$b;

    .line 3
    new-instance v0, Lu6/p$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu6/p$b;-><init>(I)V

    sput-object v0, Lu6/p;->c:Lu6/p$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(II)Lu6/p;
.end method

.method public abstract b(JJ)Lu6/p;
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lu6/p;"
        }
    .end annotation
.end method

.method public abstract d(ZZ)Lu6/p;
.end method

.method public abstract e(ZZ)Lu6/p;
.end method

.method public abstract f()I
.end method
