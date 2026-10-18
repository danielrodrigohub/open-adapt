.class public final Ll5/q$a;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Ll5/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ll5/j$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Ll5/r$a;

    invoke-direct {v0}, Ll5/r$a;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ll5/q$a;->a:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Ll5/q$a;->b:Ll5/j$a;

    return-void
.end method


# virtual methods
.method public final a()Ll5/j;
    .locals 3

    .line 1
    new-instance v0, Ll5/q;

    iget-object v1, p0, Ll5/q$a;->a:Landroid/content/Context;

    iget-object v2, p0, Ll5/q$a;->b:Ll5/j$a;

    .line 2
    invoke-interface {v2}, Ll5/j$a;->a()Ll5/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ll5/q;-><init>(Landroid/content/Context;Ll5/j;)V

    return-object v0
.end method
