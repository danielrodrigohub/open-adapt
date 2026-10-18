.class public final Lv1/a$f;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final h:Lv1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final i:Lx6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/a<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv1/a;Lx6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/a<",
            "TV;>;",
            "Lx6/a<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv1/a$f;->h:Lv1/a;

    .line 3
    iput-object p2, p0, Lv1/a$f;->i:Lx6/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv1/a$f;->h:Lv1/a;

    iget-object v0, v0, Lv1/a;->h:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lv1/a$f;->i:Lx6/a;

    invoke-static {v0}, Lv1/a;->f(Lx6/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lv1/a;->m:Lv1/a$a;

    iget-object v2, p0, Lv1/a$f;->h:Lv1/a;

    invoke-virtual {v1, v2, p0, v0}, Lv1/a$a;->b(Lv1/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lv1/a$f;->h:Lv1/a;

    invoke-static {v0}, Lv1/a;->c(Lv1/a;)V

    :cond_1
    return-void
.end method
