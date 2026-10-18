.class public final Le1/c;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.java"

# interfaces
.implements Ld1/d$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ld1/d$b;)Ld1/d;
    .locals 4

    new-instance v0, Le1/b;

    iget-object v1, p1, Ld1/d$b;->a:Landroid/content/Context;

    iget-object v2, p1, Ld1/d$b;->b:Ljava/lang/String;

    iget-object v3, p1, Ld1/d$b;->c:Ld1/d$a;

    iget-boolean p1, p1, Ld1/d$b;->d:Z

    invoke-direct {v0, v1, v2, v3, p1}, Le1/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ld1/d$a;Z)V

    return-object v0
.end method
