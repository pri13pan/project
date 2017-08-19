package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao {

	@Autowired
	private SessionFactory sessionFactory;
	public void addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(cartItem);
		
	}

	public void removeCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		CartItem cartItem=(CartItem)session.get(CartItem.class,cartItemId);
		session.delete(cartItem);
		
		
		
	}

	public void removeAllCartItem(int cartId) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Cart cart=(Cart) session.get(Cart.class,cartId);
		List<CartItem> cartItems=cart.getCartItems();
		for(CartItem cartItem:cartItems)
		{
			session.delete(cartItem);
		}
		
	}

	public Cart getCart(int cartId) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Cart cart=(Cart)session.get(Cart.class, cartId);
		return cart;
	}

}

