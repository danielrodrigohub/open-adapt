.class public final Lo7/x;
.super Ljava/lang/Object;
.source "NikeLogger.kt"

# interfaces
.implements Lo7/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/x$a;
    }
.end annotation


# static fields
.field public static final a:Lo7/x;

.field public static b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lo7/x$a;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lo7/o;

.field public static final d:Ljava/util/regex/Pattern;

.field public static e:Ljava/lang/String;

.field public static final f:Ljava/text/SimpleDateFormat;

.field public static final g:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo7/x;

    invoke-direct {v0}, Lo7/x;-><init>()V

    sput-object v0, Lo7/x;->a:Lo7/x;

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lo7/x;->b:Ljava/util/Vector;

    const-string v0, "(\\$\\d+)+$"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo7/x;->d:Ljava/util/regex/Pattern;

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lo7/x;->f:Ljava/text/SimpleDateFormat;

    .line 4
    sget-object v0, Lo7/w;->b:Lo7/w;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lo7/x;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    const-string v0, "name"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Bread_Crumb"

    .line 1
    invoke-virtual {p0, v0}, Lo7/x;->e(Ljava/lang/String;)Lfd/e;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lfd/e;->h:Ljava/lang/Object;

    .line 3
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v1, Lo7/x;->a:Lo7/x;

    sget-object v4, Lo7/u;->i:Lo7/u;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x78

    const/4 v10, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v10}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 5
    sget-object v1, Lo7/x;->c:Lo7/o;

    if-eqz v1, :cond_0

    sget-object v2, Lo7/u;->h:Lo7/u;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    const-string v3, "breadcrumb"

    move-object v4, p1

    invoke-static/range {v1 .. v9}, Lo7/o$a;->a(Lo7/o;Lo7/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "externalReporter"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "tag"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lo7/x;->e(Ljava/lang/String;)Lfd/e;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lfd/e;->h:Ljava/lang/Object;

    .line 3
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lfd/e;->i:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    sget-object v1, Lo7/x;->a:Lo7/x;

    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    sget-object v4, Lo7/u;->h:Lo7/u;

    const-string p2, "|"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lyd/s;->B0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, p2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x70

    const/4 v10, 0x0

    .line 8
    invoke-static/range {v1 .. v10}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11

    const-string v0, "cause"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lo7/x;->e(Ljava/lang/String;)Lfd/e;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lfd/e;->h:Ljava/lang/Object;

    .line 3
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lfd/e;->i:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    sget-object v1, Lo7/x;->a:Lo7/x;

    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 7
    :goto_0
    sget-object v4, Lo7/u;->h:Lo7/u;

    const-string p2, "|"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lyd/s;->B0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, p2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x50

    const/4 v10, 0x0

    move-object v7, p3

    .line 9
    invoke-static/range {v1 .. v10}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "tag"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lo7/x;->e(Ljava/lang/String;)Lfd/e;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lfd/e;->h:Ljava/lang/Object;

    .line 3
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lfd/e;->i:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    sget-object v1, Lo7/x;->a:Lo7/x;

    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    sget-object v4, Lo7/u;->j:Lo7/u;

    const-string p2, "|"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lyd/s;->B0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, p2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x70

    const/4 v10, 0x0

    .line 8
    invoke-static/range {v1 .. v10}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)Lfd/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lfd/e<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "|"

    .line 1
    invoke-static {p1, v0}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lyd/s;->B0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Lfd/e;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lfd/e;

    invoke-direct {v0, p1, p1}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final f([Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    sget-object v2, Lo7/x;->e:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 3
    array-length v4, v2

    const/4 v5, 0x5

    if-le v4, v5, :cond_3

    .line 4
    aget-object v2, v2, v5

    const-string v4, "stackTrace[CALL_STACK_INDEX]"

    invoke-static {v2, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-object v4, Lo7/x;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, ""

    .line 8
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v4, "tag"

    .line 9
    invoke-static {v2, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x2e

    const/4 v5, 0x6

    invoke-static {v2, v4, v3, v5}, Lyd/s;->r0(Ljava/lang/CharSequence;CII)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    aput-object v2, v1, v3

    .line 10
    invoke-static {v1}, Landroidx/lifecycle/o;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz p1, :cond_2

    .line 11
    invoke-static {p1}, Lgd/g;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v5, ":"

    .line 12
    invoke-static/range {v4 .. v9}, Lgd/n;->d0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lqd/l;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Synthetic stacktrace didn\'t have enough elements: are you using proguard?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sw.toString()"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo7/u;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v6, p6

    const-string v0, "module"

    move-object v7, p1

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logLevel"

    move-object/from16 v9, p3

    invoke-static {v9, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, p0

    move-object/from16 v0, p4

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lo7/x;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_0

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {v0, v6}, Lo7/x;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lo7/x;->f:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    if-eqz p7, :cond_1

    .line 4
    sget-object v12, Lo7/x;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v13, Lo7/v;

    move-object v0, v13

    move-object/from16 v1, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Lo7/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 5
    sget-object v0, Lo7/x;->b:Ljava/util/Vector;

    const-string v1, "currentDateandTime"

    invoke-static {v11, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    if-eqz v6, :cond_3

    sget-object v1, Lo7/x;->a:Lo7/x;

    invoke-virtual {v1, v6}, Lo7/x;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, "No Exception Caught"

    :goto_1
    move-object v12, v1

    new-instance v13, Lo7/x$a;

    move-object v1, v13

    move-object v2, v11

    move-object v3, p1

    move-object/from16 v4, p2

    move-object v6, v9

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lo7/x$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final i(Ljava/lang/String;J)V
    .locals 9

    long-to-float p2, p2

    const/16 p3, 0x3e8

    int-to-float p3, p3

    div-float/2addr p2, p3

    sget-object v0, Lo7/x;->c:Lo7/o;

    if-eqz v0, :cond_0

    sget-object v1, Lo7/u;->h:Lo7/u;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v2, "breadcrumb"

    move-object v3, p1

    invoke-static/range {v0 .. v8}, Lo7/o$a;->a(Lo7/o;Lo7/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "externalReporter"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lo7/x;->e(Ljava/lang/String;)Lfd/e;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lfd/e;->h:Ljava/lang/Object;

    .line 3
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lfd/e;->i:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    sget-object v1, Lo7/x;->a:Lo7/x;

    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 7
    :goto_0
    sget-object v4, Lo7/u;->j:Lo7/u;

    const-string p2, "|"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lyd/s;->B0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, p2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v7, p3

    .line 9
    invoke-static/range {v1 .. v10}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    return-void
.end method
