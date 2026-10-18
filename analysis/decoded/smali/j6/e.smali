.class public final Lj6/e;
.super Lj6/f;
.source "TextAppearance.java"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:Lj6/f;

.field public final synthetic d:Lj6/d;


# direct methods
.method public constructor <init>(Lj6/d;Landroid/content/Context;Landroid/text/TextPaint;Lj6/f;)V
    .locals 0

    iput-object p1, p0, Lj6/e;->d:Lj6/d;

    iput-object p2, p0, Lj6/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lj6/e;->b:Landroid/text/TextPaint;

    iput-object p4, p0, Lj6/e;->c:Lj6/f;

    invoke-direct {p0}, Lj6/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lj6/e;->c:Lj6/f;

    invoke-virtual {v0, p1}, Lj6/f;->a(I)V

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj6/e;->d:Lj6/d;

    iget-object v1, p0, Lj6/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lj6/e;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, v2, p1}, Lj6/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lj6/e;->c:Lj6/f;

    invoke-virtual {v0, p1, p2}, Lj6/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
