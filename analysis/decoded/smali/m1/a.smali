.class public final Lm1/a;
.super Ljava/lang/Object;
.source "DelayedWorkTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lt1/o;

.field public final synthetic i:Lm1/b;


# direct methods
.method public constructor <init>(Lm1/b;Lt1/o;)V
    .locals 0

    iput-object p1, p0, Lm1/a;->i:Lm1/b;

    iput-object p2, p0, Lm1/a;->h:Lt1/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object v0

    sget-object v1, Lm1/b;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lm1/a;->h:Lt1/o;

    iget-object v4, v4, Lt1/o;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Scheduling work %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, v4}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lm1/a;->i:Lm1/b;

    iget-object v0, v0, Lm1/b;->a:Lm1/c;

    new-array v1, v2, [Lt1/o;

    iget-object v2, p0, Lm1/a;->h:Lt1/o;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lm1/c;->d([Lt1/o;)V

    return-void
.end method
