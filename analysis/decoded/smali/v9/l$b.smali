.class public final Lv9/l$b;
.super Lrd/o;
.source "InjectionKtx.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/l;-><init>(Lea/m;Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lw9/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lv9/l;


# direct methods
.method public constructor <init>(Lv9/l;)V
    .locals 0

    iput-object p1, p0, Lv9/l$b;->h:Lv9/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw9/d;"
        }
    .end annotation

    .line 1
    sget-object v0, Lw9/d;->a:Lw9/d$a;

    .line 2
    iget-object v1, p0, Lv9/l$b;->h:Lv9/l;

    .line 3
    iget-object v1, v1, Lv9/l;->a:Lea/m;

    .line 4
    new-instance v2, Lw9/c;

    invoke-direct {v2, v1}, Lw9/c;-><init>(Lea/m;)V

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "adaptKitPairedDevices"

    .line 6
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v3, Lw9/d$a;->b:Ljava/util/LinkedHashMap;

    .line 9
    iget-object v4, v1, Lea/m;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 11
    new-instance v5, Lw9/x;

    invoke-direct {v5, v1, v2}, Lw9/x;-><init>(Lea/m;Lqd/l;)V

    .line 12
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    check-cast v5, Lw9/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
