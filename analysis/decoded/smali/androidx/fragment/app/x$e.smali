.class public final Landroidx/fragment/app/x$e;
.super Landroidx/fragment/app/t;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/fragment/app/x;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/x;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/x$e;->b:Landroidx/fragment/app/x;

    invoke-direct {p0}, Landroidx/fragment/app/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/m;
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/x$e;->b:Landroidx/fragment/app/x;

    .line 2
    iget-object p1, p1, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 3
    iget-object p1, p1, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    .line 4
    sget-object v0, Landroidx/fragment/app/m;->Z:Ljava/lang/Object;

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 6
    invoke-static {p1, p2}, Landroidx/fragment/app/t;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/m;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Landroidx/fragment/app/m$c;

    const-string v2, ": calling Fragment constructor caused an exception"

    .line 9
    invoke-static {v1, p2, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-direct {v0, p2, p1}, Landroidx/fragment/app/m$c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 11
    new-instance v0, Landroidx/fragment/app/m$c;

    const-string v2, ": could not find Fragment constructor"

    .line 12
    invoke-static {v1, p2, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {v0, p2, p1}, Landroidx/fragment/app/m$c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p1

    .line 14
    new-instance v2, Landroidx/fragment/app/m$c;

    .line 15
    invoke-static {v1, p2, v0}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-direct {v2, p2, p1}, Landroidx/fragment/app/m$c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_3
    move-exception p1

    .line 17
    new-instance v2, Landroidx/fragment/app/m$c;

    .line 18
    invoke-static {v1, p2, v0}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-direct {v2, p2, p1}, Landroidx/fragment/app/m$c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
