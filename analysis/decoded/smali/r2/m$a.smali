.class public final Lr2/m$a;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lr2/j$d;

.field public final b:Lm3/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li0/e<",
            "Lr2/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lr2/j$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr2/m$a$a;

    invoke-direct {v0, p0}, Lr2/m$a$a;-><init>(Lr2/m$a;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lm3/a;->a(ILm3/a$b;)Li0/e;

    move-result-object v0

    check-cast v0, Lm3/a$c;

    iput-object v0, p0, Lr2/m$a;->b:Lm3/a$c;

    .line 4
    iput-object p1, p0, Lr2/m$a;->a:Lr2/j$d;

    return-void
.end method
