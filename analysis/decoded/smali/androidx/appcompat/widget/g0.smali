.class public final Landroidx/appcompat/widget/g0;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Landroid/graphics/Typeface;

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/g0;->h:Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/appcompat/widget/g0;->i:Landroid/graphics/Typeface;

    iput p3, p0, Landroidx/appcompat/widget/g0;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/g0;->h:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/g0;->i:Landroid/graphics/Typeface;

    iget v2, p0, Landroidx/appcompat/widget/g0;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
