.class public final Ly2/a;
.super Ljava/lang/Object;
.source "BitmapDrawableDecoder.java"

# interfaces
.implements Lp2/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp2/j<",
        "TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lp2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/j<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lp2/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lp2/j<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/a;->b:Landroid/content/res/Resources;

    .line 3
    iput-object p2, p0, Ly2/a;->a:Lp2/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lp2/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Lp2/h;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ly2/a;->a:Lp2/j;

    invoke-interface {v0, p1, p2}, Lp2/j;->a(Ljava/lang/Object;Lp2/h;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILp2/h;)Lr2/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Lp2/h;",
            ")",
            "Lr2/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly2/a;->a:Lp2/j;

    invoke-interface {v0, p1, p2, p3, p4}, Lp2/j;->b(Ljava/lang/Object;IILp2/h;)Lr2/w;

    move-result-object p1

    .line 2
    iget-object p2, p0, Ly2/a;->b:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Ly2/v;->d(Landroid/content/res/Resources;Lr2/w;)Lr2/w;

    move-result-object p1

    return-object p1
.end method
