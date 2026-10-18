.class public final Lbd/a$a$a;
.super Lld/c;
.source "DataStoreHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbd/a$a;->a(Lbd/a;Ljava/util/List;Lqd/l;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lld/c;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.persistence.implementation.datastores.DataStoreHost$DefaultImpls"
    f = "DataStoreHost.kt"
    l = {
        0xc
    }
    m = "lockGuard"
.end annotation


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public i:I


# direct methods
.method public constructor <init>(Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lbd/a$a$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lbd/a$a$a;->h:Ljava/lang/Object;

    iget p1, p0, Lbd/a$a$a;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lbd/a$a$a;->i:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lbd/a$a;->a(Lbd/a;Ljava/util/List;Lqd/l;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
