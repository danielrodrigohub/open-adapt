.class public final Lf2/j;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lf2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le2/b;

.field public final c:Le2/b;

.field public final d:Le2/k;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le2/b;Le2/b;Le2/k;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/j;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf2/j;->b:Le2/b;

    .line 4
    iput-object p3, p0, Lf2/j;->c:Le2/b;

    .line 5
    iput-object p4, p0, Lf2/j;->d:Le2/k;

    .line 6
    iput-boolean p5, p0, Lf2/j;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ly1/e0;Lg2/b;)La2/b;
    .locals 1

    new-instance v0, La2/o;

    invoke-direct {v0, p1, p2, p0}, La2/o;-><init>(Ly1/e0;Lg2/b;Lf2/j;)V

    return-object v0
.end method
