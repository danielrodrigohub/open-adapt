.class public final Lf9/b$e;
.super Lrd/o;
.source "MyShoesAdapter.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf9/b;->q(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public static final h:Lf9/b$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf9/b$e;

    invoke-direct {v0}, Lf9/b$e;-><init>()V

    sput-object v0, Lf9/b$e;->h:Lf9/b$e;

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
    iget-object p1, p1, Lf9/f;->a:Lea/m;

    .line 4
    iget-object p1, p1, Lea/m;->i:Ljava/lang/String;

    return-object p1
.end method
