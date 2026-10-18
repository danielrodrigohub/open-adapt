.class public final Lyd/b;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lxd/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxd/d<",
        "Lvd/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Lqd/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lfd/e<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILqd/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lqd/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lfd/e<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lyd/b;->a:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lyd/b;->b:I

    .line 4
    iput p3, p0, Lyd/b;->c:I

    .line 5
    iput-object p4, p0, Lyd/b;->d:Lqd/p;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lvd/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lyd/b$a;

    invoke-direct {v0, p0}, Lyd/b$a;-><init>(Lyd/b;)V

    return-object v0
.end method
