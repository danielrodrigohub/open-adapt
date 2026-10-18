.class public final Lf9/c;
.super Lrd/o;
.source "MyShoesAdapter.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lf9/f;",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final h:Lf9/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf9/c;

    invoke-direct {v0}, Lf9/c;-><init>()V

    sput-object v0, Lf9/c;->h:Lf9/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lf9/f;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lf9/f;->b:Lt9/d;

    return-object p1
.end method
