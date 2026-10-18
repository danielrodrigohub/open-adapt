.class public final Lr2/c$a;
.super Ljava/lang/ref/WeakReference;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lr2/q<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lp2/f;

.field public final b:Z

.field public c:Lr2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/w<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp2/f;Lr2/q;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/f;",
            "Lr2/q<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lr2/q<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    .line 2
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lr2/c$a;->a:Lp2/f;

    .line 4
    iget-boolean p1, p2, Lr2/q;->h:Z

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 5
    iget-object p1, p2, Lr2/q;->j:Lr2/w;

    .line 6
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-object p1, p0, Lr2/c$a;->c:Lr2/w;

    .line 8
    iget-boolean p1, p2, Lr2/q;->h:Z

    .line 9
    iput-boolean p1, p0, Lr2/c$a;->b:Z

    return-void
.end method
