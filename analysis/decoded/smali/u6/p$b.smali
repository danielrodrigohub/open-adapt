.class public final Lu6/p$b;
.super Lu6/p;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu6/p;-><init>()V

    .line 2
    iput p1, p0, Lu6/p$b;->d:I

    return-void
.end method


# virtual methods
.method public final a(II)Lu6/p;
    .locals 0

    return-object p0
.end method

.method public final b(JJ)Lu6/p;
    .locals 0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;
    .locals 0
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

    return-object p0
.end method

.method public final d(ZZ)Lu6/p;
    .locals 0

    return-object p0
.end method

.method public final e(ZZ)Lu6/p;
    .locals 0

    return-object p0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lu6/p$b;->d:I

    return v0
.end method
