.class public final synthetic Ln3/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt6/o;


# instance fields
.field public final synthetic h:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/v;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Ln3/v;->h:Landroid/content/Context;

    .line 1
    sget-object v1, Ll5/p;->n:Lu6/p0;

    .line 2
    const-class v1, Ll5/p;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Ll5/p;->t:Ll5/p;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ll5/p$b;

    invoke-direct {v2, v0}, Ll5/p$b;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v0, Ll5/p;

    iget-object v4, v2, Ll5/p$b;->a:Landroid/content/Context;

    iget-object v5, v2, Ll5/p$b;->b:Ljava/util/HashMap;

    iget v6, v2, Ll5/p$b;->c:I

    iget-object v7, v2, Ll5/p$b;->d:Lm5/a0;

    iget-boolean v8, v2, Ll5/p$b;->e:Z

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Ll5/p;-><init>(Landroid/content/Context;Ljava/util/Map;ILm5/c;ZLl5/p$a;)V

    .line 6
    sput-object v0, Ll5/p;->t:Ll5/p;

    .line 7
    :cond_0
    sget-object v0, Ll5/p;->t:Ll5/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
