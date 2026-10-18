.class public final Lr2/m$b;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lu2/a;

.field public final b:Lu2/a;

.field public final c:Lu2/a;

.field public final d:Lu2/a;

.field public final e:Lr2/o;

.field public final f:Lr2/q$a;

.field public final g:Lm3/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li0/e<",
            "Lr2/n<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu2/a;Lu2/a;Lu2/a;Lu2/a;Lr2/o;Lr2/q$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr2/m$b$a;

    invoke-direct {v0, p0}, Lr2/m$b$a;-><init>(Lr2/m$b;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lm3/a;->a(ILm3/a$b;)Li0/e;

    move-result-object v0

    check-cast v0, Lm3/a$c;

    iput-object v0, p0, Lr2/m$b;->g:Lm3/a$c;

    .line 4
    iput-object p1, p0, Lr2/m$b;->a:Lu2/a;

    .line 5
    iput-object p2, p0, Lr2/m$b;->b:Lu2/a;

    .line 6
    iput-object p3, p0, Lr2/m$b;->c:Lu2/a;

    .line 7
    iput-object p4, p0, Lr2/m$b;->d:Lu2/a;

    .line 8
    iput-object p5, p0, Lr2/m$b;->e:Lr2/o;

    .line 9
    iput-object p6, p0, Lr2/m$b;->f:Lr2/q$a;

    return-void
.end method
