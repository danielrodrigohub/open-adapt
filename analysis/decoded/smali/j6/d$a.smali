.class public final Lj6/d$a;
.super Lz/d$e;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj6/d;->c(Landroid/content/Context;Lj6/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj6/f;

.field public final synthetic b:Lj6/d;


# direct methods
.method public constructor <init>(Lj6/d;Lj6/f;)V
    .locals 0

    iput-object p1, p0, Lj6/d$a;->b:Lj6/d;

    iput-object p2, p0, Lj6/d$a;->a:Lj6/f;

    invoke-direct {p0}, Lz/d$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj6/d$a;->b:Lj6/d;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lj6/d;->m:Z

    .line 3
    iget-object v0, p0, Lj6/d$a;->a:Lj6/f;

    invoke-virtual {v0, p1}, Lj6/f;->a(I)V

    return-void
.end method

.method public final e(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj6/d$a;->b:Lj6/d;

    iget v1, v0, Lj6/d;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lj6/d;->n:Landroid/graphics/Typeface;

    .line 3
    iget-object p1, p0, Lj6/d$a;->b:Lj6/d;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lj6/d;->m:Z

    .line 5
    iget-object v0, p0, Lj6/d$a;->a:Lj6/f;

    .line 6
    iget-object p1, p1, Lj6/d;->n:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lj6/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
