.class public final Ly6/o;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(La7/n;)La7/o;
    .locals 5

    .line 1
    invoke-static {}, La7/o;->B()La7/o$a;

    move-result-object v0

    invoke-virtual {p0}, La7/n;->D()I

    move-result v1

    .line 2
    invoke-virtual {v0}, Lb7/x$a;->j()V

    .line 3
    iget-object v2, v0, Lb7/x$a;->i:Lb7/x;

    check-cast v2, La7/o;

    invoke-static {v2, v1}, La7/o;->y(La7/o;I)V

    .line 4
    invoke-virtual {p0}, La7/n;->C()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La7/n$b;

    .line 5
    invoke-static {}, La7/o$b;->D()La7/o$b$a;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, La7/n$b;->C()La7/j;

    move-result-object v3

    invoke-virtual {v3}, La7/j;->D()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lb7/x$a;->j()V

    .line 8
    iget-object v4, v2, Lb7/x$a;->i:Lb7/x;

    check-cast v4, La7/o$b;

    invoke-static {v4, v3}, La7/o$b;->y(La7/o$b;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, La7/n$b;->F()La7/k;

    move-result-object v3

    .line 10
    invoke-virtual {v2}, Lb7/x$a;->j()V

    .line 11
    iget-object v4, v2, Lb7/x$a;->i:Lb7/x;

    check-cast v4, La7/o$b;

    invoke-static {v4, v3}, La7/o$b;->A(La7/o$b;La7/k;)V

    .line 12
    invoke-virtual {v1}, La7/n$b;->E()La7/p;

    move-result-object v3

    .line 13
    invoke-virtual {v2}, Lb7/x$a;->j()V

    .line 14
    iget-object v4, v2, Lb7/x$a;->i:Lb7/x;

    check-cast v4, La7/o$b;

    invoke-static {v4, v3}, La7/o$b;->z(La7/o$b;La7/p;)V

    .line 15
    invoke-virtual {v1}, La7/n$b;->D()I

    move-result v1

    .line 16
    invoke-virtual {v2}, Lb7/x$a;->j()V

    .line 17
    iget-object v3, v2, Lb7/x$a;->i:Lb7/x;

    check-cast v3, La7/o$b;

    invoke-static {v3, v1}, La7/o$b;->B(La7/o$b;I)V

    .line 18
    invoke-virtual {v2}, Lb7/x$a;->h()Lb7/x;

    move-result-object v1

    check-cast v1, La7/o$b;

    .line 19
    invoke-virtual {v0}, Lb7/x$a;->j()V

    .line 20
    iget-object v2, v0, Lb7/x$a;->i:Lb7/x;

    check-cast v2, La7/o;

    invoke-static {v2, v1}, La7/o;->z(La7/o;La7/o$b;)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lb7/x$a;->h()Lb7/x;

    move-result-object p0

    check-cast p0, La7/o;

    return-object p0
.end method
