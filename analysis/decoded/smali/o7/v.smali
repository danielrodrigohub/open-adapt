.class public final synthetic Lo7/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lo7/u;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/util/Map;

.field public final synthetic l:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lo7/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7/v;->h:Lo7/u;

    iput-object p2, p0, Lo7/v;->i:Ljava/lang/String;

    iput-object p3, p0, Lo7/v;->j:Ljava/lang/String;

    iput-object p4, p0, Lo7/v;->k:Ljava/util/Map;

    iput-object p5, p0, Lo7/v;->l:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v1, p0, Lo7/v;->h:Lo7/u;

    iget-object v2, p0, Lo7/v;->i:Ljava/lang/String;

    iget-object v3, p0, Lo7/v;->j:Ljava/lang/String;

    iget-object v4, p0, Lo7/v;->k:Ljava/util/Map;

    iget-object v5, p0, Lo7/v;->l:Ljava/lang/Throwable;

    const-string v0, "$logLevel"

    .line 1
    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tag"

    invoke-static {v2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {v3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lo7/x;->c:Lo7/o;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lo7/o$a;->a(Lo7/o;Lo7/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "externalReporter"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
