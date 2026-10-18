.class public final Le3/p;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Z

.field public final synthetic i:Le3/o$c$a;


# direct methods
.method public constructor <init>(Le3/o$c$a;Z)V
    .locals 0

    iput-object p1, p0, Le3/p;->i:Le3/o$c$a;

    iput-boolean p2, p0, Le3/p;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le3/p;->i:Le3/o$c$a;

    iget-boolean v1, p0, Le3/p;->h:Z

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ll3/l;->a()V

    .line 3
    iget-object v0, v0, Le3/o$c$a;->a:Le3/o$c;

    iget-boolean v2, v0, Le3/o$c;->a:Z

    .line 4
    iput-boolean v1, v0, Le3/o$c;->a:Z

    if-eq v2, v1, :cond_0

    .line 5
    iget-object v0, v0, Le3/o$c;->b:Le3/b$a;

    invoke-interface {v0, v1}, Le3/b$a;->a(Z)V

    :cond_0
    return-void
.end method
