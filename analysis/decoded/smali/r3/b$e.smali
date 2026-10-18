.class public final Lr3/b$e;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lr3/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final b:Lr3/k$a;

.field public c:Lr3/e;

.field public d:Z

.field public final synthetic e:Lr3/b;


# direct methods
.method public constructor <init>(Lr3/b;Lr3/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/b$e;->e:Lr3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr3/b$e;->b:Lr3/k$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr3/b$e;->e:Lr3/b;

    .line 2
    iget-object v0, v0, Lr3/b;->u:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Landroidx/appcompat/widget/k1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/k1;-><init>(Ljava/lang/Object;I)V

    .line 5
    invoke-static {v0, v1}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
