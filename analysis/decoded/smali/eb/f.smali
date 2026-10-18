.class public final Leb/f;
.super Ljava/lang/Object;
.source "TelemetryLogImpl.kt"

# interfaces
.implements Leb/e;


# static fields
.field public static final a:Leb/f;

.field public static b:Z

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leb/g;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Leb/f;

    invoke-direct {v0}, Leb/f;-><init>()V

    sput-object v0, Leb/f;->a:Leb/f;

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leb/f;->c:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leb/f;->d:Ljava/util/ArrayList;

    const-string v0, "NUID_NOT_PRESENT"

    .line 3
    sput-object v0, Leb/f;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a([Leb/g;)V
    .locals 10

    .line 1
    sget-object v0, Leb/f;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Leb/f;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 4
    sget-object v4, Leb/f;->a:Leb/f;

    invoke-virtual {v4, v3}, Leb/f;->c(Leb/g;)V

    .line 5
    sget-object v4, Leb/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v1, p1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 7
    sget-object v5, Leb/f;->a:Leb/f;

    invoke-virtual {v5, v4}, Leb/f;->c(Leb/g;)V

    .line 8
    sget-object v5, Lgb/c;->a:Lgb/c;

    const/4 v6, 0x1

    new-array v6, v6, [Lgb/a;

    .line 9
    new-instance v7, Lgb/a;

    .line 10
    iget-object v8, v4, Leb/g;->b:Ljava/lang/String;

    .line 11
    iget v9, v4, Leb/g;->a:I

    .line 12
    iget-object v4, v4, Leb/g;->c:Ljava/util/Map;

    .line 13
    invoke-direct {v7, v8, v9, v4}, Lgb/a;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    aput-object v7, v6, v2

    .line 14
    invoke-virtual {v5, v6}, Lgb/c;->c([Lgb/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string p1, "NUID_NOT_PRESENT"

    .line 2
    sget-object v0, Lgb/c;->a:Lgb/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sput-object p1, Lgb/c;->k:Ljava/lang/String;

    .line 4
    sput-object p1, Leb/f;->e:Ljava/lang/String;

    goto :goto_2

    .line 5
    :cond_2
    sget-object v0, Lgb/c;->a:Lgb/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sput-object p1, Lgb/c;->k:Ljava/lang/String;

    .line 7
    sput-object p1, Leb/f;->e:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public final c(Leb/g;)V
    .locals 7

    const-string v0, "telemetryType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    .line 2
    iget v0, p1, Leb/g;->a:I

    .line 3
    invoke-static {v0}, Landroidx/recyclerview/widget/d;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p1, Leb/g;->b:Ljava/lang/String;

    .line 5
    iget-object v3, p1, Leb/g;->c:Ljava/util/Map;

    .line 6
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 7
    iget-object p1, p1, Leb/g;->c:Ljava/util/Map;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attributes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v3, " "

    .line 9
    invoke-static {v0, v3, v2, v3, p1}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "telemetry"

    .line 10
    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    return-void
.end method
