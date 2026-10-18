.class public final Ln3/h1$c;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Ln3/f1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lp4/t;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp4/x$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lp4/x;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lp4/t;

    invoke-direct {v0, p1, p2}, Lp4/t;-><init>(Lp4/x;Z)V

    iput-object v0, p0, Ln3/h1$c;->a:Lp4/t;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/h1$c;->c:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/h1$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln3/h1$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ln3/b2;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/h1$c;->a:Lp4/t;

    .line 2
    iget-object v0, v0, Lp4/t;->v:Lp4/t$a;

    return-object v0
.end method
